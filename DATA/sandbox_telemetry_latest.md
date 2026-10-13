# sandbox_telemetry_parse — 2026-10-13 04:07:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=808393 lines=1899
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1715 |
| `chrome_profile_sample` | 176 |
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
| `chromeBrowserPssKb` | {'int': 1715} |
| `chromeGpuPssKb` | {'int': 1715} |
| `chromeOtherPssKb` | {'int': 1715} |
| `chromeProcesses` | {'int': 1715} |
| `chromeProfiles` | {'int': 1715} |
| `chromeRendererMaxPssKb` | {'int': 1715} |
| `chromeRendererPssKb` | {'int': 1715} |
| `chromeRenderers` | {'int': 1715} |
| `chromeTabs` | {'int': 1715} |
| `chromeTabsProbedProfiles` | {'int': 1715} |
| `chromeUtilityPssKb` | {'int': 1715} |
| `desktopPssKb` | {'int': 1715} |
| `hostPssKb` | {'int': 1715} |
| `kind` | {'str': 1715} |
| `memAvailableKb` | {'int': 1715} |
| `memTotalKb` | {'int': 1715} |
| `otherPssKb` | {'int': 1715} |
| `processes` | {'int': 1715} |
| `pssFallbackProcesses` | {'int': 1715} |

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
| `cpuMillicores` | {'int': 175} |
| `display` | {'int': 176} |
| `kind` | {'str': 176} |
| `processes` | {'int': 176} |
| `pssKb` | {'int': 176} |
| `rendererMaxPssKb` | {'int': 176} |
| `renderers` | {'int': 176} |
| `tabs` | {'int': 176} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
