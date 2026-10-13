# sandbox_telemetry_parse — 2026-10-13 11:22:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1040046 lines=2627
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2079 |
| `chrome_profile_sample` | 540 |
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
| `chromeBrowserPssKb` | {'int': 2079} |
| `chromeGpuPssKb` | {'int': 2079} |
| `chromeOtherPssKb` | {'int': 2079} |
| `chromeProcesses` | {'int': 2079} |
| `chromeProfiles` | {'int': 2079} |
| `chromeRendererMaxPssKb` | {'int': 2079} |
| `chromeRendererPssKb` | {'int': 2079} |
| `chromeRenderers` | {'int': 2079} |
| `chromeTabs` | {'int': 2079} |
| `chromeTabsProbedProfiles` | {'int': 2079} |
| `chromeUtilityPssKb` | {'int': 2079} |
| `desktopPssKb` | {'int': 2079} |
| `hostPssKb` | {'int': 2079} |
| `kind` | {'str': 2079} |
| `memAvailableKb` | {'int': 2079} |
| `memTotalKb` | {'int': 2079} |
| `otherPssKb` | {'int': 2079} |
| `processes` | {'int': 2079} |
| `pssFallbackProcesses` | {'int': 2079} |

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
| `cpuMillicores` | {'int': 539} |
| `display` | {'int': 540} |
| `kind` | {'str': 540} |
| `processes` | {'int': 540} |
| `pssKb` | {'int': 540} |
| `rendererMaxPssKb` | {'int': 540} |
| `renderers` | {'int': 540} |
| `tabs` | {'int': 540} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
