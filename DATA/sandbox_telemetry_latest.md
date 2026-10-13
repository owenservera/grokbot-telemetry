# sandbox_telemetry_parse — 2026-10-13 06:05:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=872042 lines=2099
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1815 |
| `chrome_profile_sample` | 276 |
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
| `chromeBrowserPssKb` | {'int': 1815} |
| `chromeGpuPssKb` | {'int': 1815} |
| `chromeOtherPssKb` | {'int': 1815} |
| `chromeProcesses` | {'int': 1815} |
| `chromeProfiles` | {'int': 1815} |
| `chromeRendererMaxPssKb` | {'int': 1815} |
| `chromeRendererPssKb` | {'int': 1815} |
| `chromeRenderers` | {'int': 1815} |
| `chromeTabs` | {'int': 1815} |
| `chromeTabsProbedProfiles` | {'int': 1815} |
| `chromeUtilityPssKb` | {'int': 1815} |
| `desktopPssKb` | {'int': 1815} |
| `hostPssKb` | {'int': 1815} |
| `kind` | {'str': 1815} |
| `memAvailableKb` | {'int': 1815} |
| `memTotalKb` | {'int': 1815} |
| `otherPssKb` | {'int': 1815} |
| `processes` | {'int': 1815} |
| `pssFallbackProcesses` | {'int': 1815} |

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
| `cpuMillicores` | {'int': 275} |
| `display` | {'int': 276} |
| `kind` | {'str': 276} |
| `processes` | {'int': 276} |
| `pssKb` | {'int': 276} |
| `rendererMaxPssKb` | {'int': 276} |
| `renderers` | {'int': 276} |
| `tabs` | {'int': 276} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
