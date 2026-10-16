# sandbox_telemetry_parse — 2026-10-16 20:25:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=803784 lines=3004
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1990 |
| `memory_sample` | 1005 |
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
| `chromeBrowserPssKb` | {'int': 1005} |
| `chromeGpuPssKb` | {'int': 1005} |
| `chromeOtherPssKb` | {'int': 1005} |
| `chromeProcesses` | {'int': 1005} |
| `chromeProfiles` | {'int': 1005} |
| `chromeRendererMaxPssKb` | {'int': 1005} |
| `chromeRendererPssKb` | {'int': 1005} |
| `chromeRenderers` | {'int': 1005} |
| `chromeTabs` | {'int': 1005} |
| `chromeTabsProbedProfiles` | {'int': 1005} |
| `chromeUtilityPssKb` | {'int': 1005} |
| `desktopPssKb` | {'int': 1005} |
| `hostPssKb` | {'int': 1005} |
| `kind` | {'str': 1005} |
| `memAvailableKb` | {'int': 1005} |
| `memTotalKb` | {'int': 1005} |
| `otherPssKb` | {'int': 1005} |
| `processes` | {'int': 1005} |
| `pssFallbackProcesses` | {'int': 1005} |

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
| `cpuMillicores` | {'int': 1987} |
| `display` | {'int': 1990} |
| `kind` | {'str': 1990} |
| `processes` | {'int': 1990} |
| `pssKb` | {'int': 1990} |
| `rendererMaxPssKb` | {'int': 1990} |
| `renderers` | {'int': 1990} |
| `tabs` | {'int': 1989} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
