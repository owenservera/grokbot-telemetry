# sandbox_telemetry_parse — 2026-10-13 19:38:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1202869 lines=3137
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2334 |
| `chrome_profile_sample` | 795 |
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
| `chromeBrowserPssKb` | {'int': 2334} |
| `chromeGpuPssKb` | {'int': 2334} |
| `chromeOtherPssKb` | {'int': 2334} |
| `chromeProcesses` | {'int': 2334} |
| `chromeProfiles` | {'int': 2334} |
| `chromeRendererMaxPssKb` | {'int': 2334} |
| `chromeRendererPssKb` | {'int': 2334} |
| `chromeRenderers` | {'int': 2334} |
| `chromeTabs` | {'int': 2334} |
| `chromeTabsProbedProfiles` | {'int': 2334} |
| `chromeUtilityPssKb` | {'int': 2334} |
| `desktopPssKb` | {'int': 2334} |
| `hostPssKb` | {'int': 2334} |
| `kind` | {'str': 2334} |
| `memAvailableKb` | {'int': 2334} |
| `memTotalKb` | {'int': 2334} |
| `otherPssKb` | {'int': 2334} |
| `processes` | {'int': 2334} |
| `pssFallbackProcesses` | {'int': 2334} |

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
| `cpuMillicores` | {'int': 794} |
| `display` | {'int': 795} |
| `kind` | {'str': 795} |
| `processes` | {'int': 795} |
| `pssKb` | {'int': 795} |
| `rendererMaxPssKb` | {'int': 795} |
| `renderers` | {'int': 795} |
| `tabs` | {'int': 795} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
