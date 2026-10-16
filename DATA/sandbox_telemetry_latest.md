# sandbox_telemetry_parse — 2026-10-16 14:59:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=557340 lines=2083
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1376 |
| `memory_sample` | 698 |
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
| `chromeBrowserPssKb` | {'int': 698} |
| `chromeGpuPssKb` | {'int': 698} |
| `chromeOtherPssKb` | {'int': 698} |
| `chromeProcesses` | {'int': 698} |
| `chromeProfiles` | {'int': 698} |
| `chromeRendererMaxPssKb` | {'int': 698} |
| `chromeRendererPssKb` | {'int': 698} |
| `chromeRenderers` | {'int': 698} |
| `chromeTabs` | {'int': 698} |
| `chromeTabsProbedProfiles` | {'int': 698} |
| `chromeUtilityPssKb` | {'int': 698} |
| `desktopPssKb` | {'int': 698} |
| `hostPssKb` | {'int': 698} |
| `kind` | {'str': 698} |
| `memAvailableKb` | {'int': 698} |
| `memTotalKb` | {'int': 698} |
| `otherPssKb` | {'int': 698} |
| `processes` | {'int': 698} |
| `pssFallbackProcesses` | {'int': 698} |

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
| `cpuMillicores` | {'int': 1373} |
| `display` | {'int': 1376} |
| `kind` | {'str': 1376} |
| `processes` | {'int': 1376} |
| `pssKb` | {'int': 1376} |
| `rendererMaxPssKb` | {'int': 1376} |
| `renderers` | {'int': 1376} |
| `tabs` | {'int': 1375} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
