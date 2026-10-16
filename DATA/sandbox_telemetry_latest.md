# sandbox_telemetry_parse — 2026-10-16 02:47:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=10105 lines=36
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 16 |
| `chrome_profile_sample` | 11 |
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
| `chromeBrowserPssKb` | {'int': 16} |
| `chromeGpuPssKb` | {'int': 16} |
| `chromeOtherPssKb` | {'int': 16} |
| `chromeProcesses` | {'int': 16} |
| `chromeProfiles` | {'int': 16} |
| `chromeRendererMaxPssKb` | {'int': 16} |
| `chromeRendererPssKb` | {'int': 16} |
| `chromeRenderers` | {'int': 16} |
| `chromeTabs` | {'int': 16} |
| `chromeTabsProbedProfiles` | {'int': 16} |
| `chromeUtilityPssKb` | {'int': 16} |
| `desktopPssKb` | {'int': 16} |
| `hostPssKb` | {'int': 16} |
| `kind` | {'str': 16} |
| `memAvailableKb` | {'int': 16} |
| `memTotalKb` | {'int': 16} |
| `otherPssKb` | {'int': 16} |
| `processes` | {'int': 16} |
| `pssFallbackProcesses` | {'int': 16} |

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
| `cpuMillicores` | {'int': 9} |
| `display` | {'int': 11} |
| `kind` | {'str': 11} |
| `processes` | {'int': 11} |
| `pssKb` | {'int': 11} |
| `rendererMaxPssKb` | {'int': 11} |
| `renderers` | {'int': 11} |
| `tabs` | {'int': 11} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
