# sandbox_telemetry_parse — 2026-10-13 10:28:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1012675 lines=2541
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2036 |
| `chrome_profile_sample` | 497 |
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
| `chromeBrowserPssKb` | {'int': 2036} |
| `chromeGpuPssKb` | {'int': 2036} |
| `chromeOtherPssKb` | {'int': 2036} |
| `chromeProcesses` | {'int': 2036} |
| `chromeProfiles` | {'int': 2036} |
| `chromeRendererMaxPssKb` | {'int': 2036} |
| `chromeRendererPssKb` | {'int': 2036} |
| `chromeRenderers` | {'int': 2036} |
| `chromeTabs` | {'int': 2036} |
| `chromeTabsProbedProfiles` | {'int': 2036} |
| `chromeUtilityPssKb` | {'int': 2036} |
| `desktopPssKb` | {'int': 2036} |
| `hostPssKb` | {'int': 2036} |
| `kind` | {'str': 2036} |
| `memAvailableKb` | {'int': 2036} |
| `memTotalKb` | {'int': 2036} |
| `otherPssKb` | {'int': 2036} |
| `processes` | {'int': 2036} |
| `pssFallbackProcesses` | {'int': 2036} |

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
| `cpuMillicores` | {'int': 496} |
| `display` | {'int': 497} |
| `kind` | {'str': 497} |
| `processes` | {'int': 497} |
| `pssKb` | {'int': 497} |
| `rendererMaxPssKb` | {'int': 497} |
| `renderers` | {'int': 497} |
| `tabs` | {'int': 497} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
