# sandbox_telemetry_parse — 2026-10-13 10:44:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1021588 lines=2569
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2050 |
| `chrome_profile_sample` | 511 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2050} |
| `chromeGpuPssKb` | {'int': 2050} |
| `chromeOtherPssKb` | {'int': 2050} |
| `chromeProcesses` | {'int': 2050} |
| `chromeProfiles` | {'int': 2050} |
| `chromeRendererMaxPssKb` | {'int': 2050} |
| `chromeRendererPssKb` | {'int': 2050} |
| `chromeRenderers` | {'int': 2050} |
| `chromeTabs` | {'int': 2050} |
| `chromeTabsProbedProfiles` | {'int': 2050} |
| `chromeUtilityPssKb` | {'int': 2050} |
| `desktopPssKb` | {'int': 2050} |
| `hostPssKb` | {'int': 2050} |
| `kind` | {'str': 2050} |
| `memAvailableKb` | {'int': 2050} |
| `memTotalKb` | {'int': 2050} |
| `otherPssKb` | {'int': 2050} |
| `processes` | {'int': 2050} |
| `pssFallbackProcesses` | {'int': 2050} |

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
| `cpuMillicores` | {'int': 510} |
| `display` | {'int': 511} |
| `kind` | {'str': 511} |
| `processes` | {'int': 511} |
| `pssKb` | {'int': 511} |
| `rendererMaxPssKb` | {'int': 511} |
| `renderers` | {'int': 511} |
| `tabs` | {'int': 511} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
