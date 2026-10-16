# sandbox_telemetry_parse — 2026-10-16 13:14:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=475464 lines=1777
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1172 |
| `memory_sample` | 596 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 596} |
| `chromeGpuPssKb` | {'int': 596} |
| `chromeOtherPssKb` | {'int': 596} |
| `chromeProcesses` | {'int': 596} |
| `chromeProfiles` | {'int': 596} |
| `chromeRendererMaxPssKb` | {'int': 596} |
| `chromeRendererPssKb` | {'int': 596} |
| `chromeRenderers` | {'int': 596} |
| `chromeTabs` | {'int': 596} |
| `chromeTabsProbedProfiles` | {'int': 596} |
| `chromeUtilityPssKb` | {'int': 596} |
| `desktopPssKb` | {'int': 596} |
| `hostPssKb` | {'int': 596} |
| `kind` | {'str': 596} |
| `memAvailableKb` | {'int': 596} |
| `memTotalKb` | {'int': 596} |
| `otherPssKb` | {'int': 596} |
| `processes` | {'int': 596} |
| `pssFallbackProcesses` | {'int': 596} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1169} |
| `display` | {'int': 1172} |
| `kind` | {'str': 1172} |
| `processes` | {'int': 1172} |
| `pssKb` | {'int': 1172} |
| `rendererMaxPssKb` | {'int': 1172} |
| `renderers` | {'int': 1172} |
| `tabs` | {'int': 1171} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
