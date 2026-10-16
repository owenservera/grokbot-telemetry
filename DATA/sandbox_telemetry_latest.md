# sandbox_telemetry_parse — 2026-10-16 02:42:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=6620 lines=24
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 11 |
| `chrome_profile_sample` | 5 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 11} |
| `chromeGpuPssKb` | {'int': 11} |
| `chromeOtherPssKb` | {'int': 11} |
| `chromeProcesses` | {'int': 11} |
| `chromeProfiles` | {'int': 11} |
| `chromeRendererMaxPssKb` | {'int': 11} |
| `chromeRendererPssKb` | {'int': 11} |
| `chromeRenderers` | {'int': 11} |
| `chromeTabs` | {'int': 11} |
| `chromeTabsProbedProfiles` | {'int': 11} |
| `chromeUtilityPssKb` | {'int': 11} |
| `desktopPssKb` | {'int': 11} |
| `hostPssKb` | {'int': 11} |
| `kind` | {'str': 11} |
| `memAvailableKb` | {'int': 11} |
| `memTotalKb` | {'int': 11} |
| `otherPssKb` | {'int': 11} |
| `processes` | {'int': 11} |
| `pssFallbackProcesses` | {'int': 11} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 4} |
| `display` | {'int': 5} |
| `kind` | {'str': 5} |
| `processes` | {'int': 5} |
| `pssKb` | {'int': 5} |
| `rendererMaxPssKb` | {'int': 5} |
| `renderers` | {'int': 5} |
| `tabs` | {'int': 5} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
