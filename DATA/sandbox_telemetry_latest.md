# sandbox_telemetry_parse — 2026-10-16 14:55:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=554132 lines=2071
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1368 |
| `memory_sample` | 694 |
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
| `chromeBrowserPssKb` | {'int': 694} |
| `chromeGpuPssKb` | {'int': 694} |
| `chromeOtherPssKb` | {'int': 694} |
| `chromeProcesses` | {'int': 694} |
| `chromeProfiles` | {'int': 694} |
| `chromeRendererMaxPssKb` | {'int': 694} |
| `chromeRendererPssKb` | {'int': 694} |
| `chromeRenderers` | {'int': 694} |
| `chromeTabs` | {'int': 694} |
| `chromeTabsProbedProfiles` | {'int': 694} |
| `chromeUtilityPssKb` | {'int': 694} |
| `desktopPssKb` | {'int': 694} |
| `hostPssKb` | {'int': 694} |
| `kind` | {'str': 694} |
| `memAvailableKb` | {'int': 694} |
| `memTotalKb` | {'int': 694} |
| `otherPssKb` | {'int': 694} |
| `processes` | {'int': 694} |
| `pssFallbackProcesses` | {'int': 694} |

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
| `cpuMillicores` | {'int': 1365} |
| `display` | {'int': 1368} |
| `kind` | {'str': 1368} |
| `processes` | {'int': 1368} |
| `pssKb` | {'int': 1368} |
| `rendererMaxPssKb` | {'int': 1368} |
| `renderers` | {'int': 1368} |
| `tabs` | {'int': 1367} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
