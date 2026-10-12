# sandbox_telemetry_parse — 2026-10-13 01:50:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=770187 lines=1779
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1655 |
| `chrome_profile_sample` | 116 |
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
| `chromeBrowserPssKb` | {'int': 1655} |
| `chromeGpuPssKb` | {'int': 1655} |
| `chromeOtherPssKb` | {'int': 1655} |
| `chromeProcesses` | {'int': 1655} |
| `chromeProfiles` | {'int': 1655} |
| `chromeRendererMaxPssKb` | {'int': 1655} |
| `chromeRendererPssKb` | {'int': 1655} |
| `chromeRenderers` | {'int': 1655} |
| `chromeTabs` | {'int': 1655} |
| `chromeTabsProbedProfiles` | {'int': 1655} |
| `chromeUtilityPssKb` | {'int': 1655} |
| `desktopPssKb` | {'int': 1655} |
| `hostPssKb` | {'int': 1655} |
| `kind` | {'str': 1655} |
| `memAvailableKb` | {'int': 1655} |
| `memTotalKb` | {'int': 1655} |
| `otherPssKb` | {'int': 1655} |
| `processes` | {'int': 1655} |
| `pssFallbackProcesses` | {'int': 1655} |

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
| `cpuMillicores` | {'int': 115} |
| `display` | {'int': 116} |
| `kind` | {'str': 116} |
| `processes` | {'int': 116} |
| `pssKb` | {'int': 116} |
| `rendererMaxPssKb` | {'int': 116} |
| `renderers` | {'int': 116} |
| `tabs` | {'int': 116} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
