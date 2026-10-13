# sandbox_telemetry_parse — 2026-10-13 09:57:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=996127 lines=2489
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2010 |
| `chrome_profile_sample` | 471 |
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
| `chromeBrowserPssKb` | {'int': 2010} |
| `chromeGpuPssKb` | {'int': 2010} |
| `chromeOtherPssKb` | {'int': 2010} |
| `chromeProcesses` | {'int': 2010} |
| `chromeProfiles` | {'int': 2010} |
| `chromeRendererMaxPssKb` | {'int': 2010} |
| `chromeRendererPssKb` | {'int': 2010} |
| `chromeRenderers` | {'int': 2010} |
| `chromeTabs` | {'int': 2010} |
| `chromeTabsProbedProfiles` | {'int': 2010} |
| `chromeUtilityPssKb` | {'int': 2010} |
| `desktopPssKb` | {'int': 2010} |
| `hostPssKb` | {'int': 2010} |
| `kind` | {'str': 2010} |
| `memAvailableKb` | {'int': 2010} |
| `memTotalKb` | {'int': 2010} |
| `otherPssKb` | {'int': 2010} |
| `processes` | {'int': 2010} |
| `pssFallbackProcesses` | {'int': 2010} |

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
| `cpuMillicores` | {'int': 470} |
| `display` | {'int': 471} |
| `kind` | {'str': 471} |
| `processes` | {'int': 471} |
| `pssKb` | {'int': 471} |
| `rendererMaxPssKb` | {'int': 471} |
| `renderers` | {'int': 471} |
| `tabs` | {'int': 471} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
