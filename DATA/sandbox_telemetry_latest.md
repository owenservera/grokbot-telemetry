# sandbox_telemetry_parse — 2026-10-16 07:15:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=222662 lines=832
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 542 |
| `memory_sample` | 281 |
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
| `chromeBrowserPssKb` | {'int': 281} |
| `chromeGpuPssKb` | {'int': 281} |
| `chromeOtherPssKb` | {'int': 281} |
| `chromeProcesses` | {'int': 281} |
| `chromeProfiles` | {'int': 281} |
| `chromeRendererMaxPssKb` | {'int': 281} |
| `chromeRendererPssKb` | {'int': 281} |
| `chromeRenderers` | {'int': 281} |
| `chromeTabs` | {'int': 281} |
| `chromeTabsProbedProfiles` | {'int': 281} |
| `chromeUtilityPssKb` | {'int': 281} |
| `desktopPssKb` | {'int': 281} |
| `hostPssKb` | {'int': 281} |
| `kind` | {'str': 281} |
| `memAvailableKb` | {'int': 281} |
| `memTotalKb` | {'int': 281} |
| `otherPssKb` | {'int': 281} |
| `processes` | {'int': 281} |
| `pssFallbackProcesses` | {'int': 281} |

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
| `cpuMillicores` | {'int': 539} |
| `display` | {'int': 542} |
| `kind` | {'str': 542} |
| `processes` | {'int': 542} |
| `pssKb` | {'int': 542} |
| `rendererMaxPssKb` | {'int': 542} |
| `renderers` | {'int': 542} |
| `tabs` | {'int': 541} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
