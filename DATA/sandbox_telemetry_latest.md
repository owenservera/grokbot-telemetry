# sandbox_telemetry_parse — 2026-10-16 15:37:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=586224 lines=2191
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1448 |
| `memory_sample` | 734 |
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
| `chromeBrowserPssKb` | {'int': 734} |
| `chromeGpuPssKb` | {'int': 734} |
| `chromeOtherPssKb` | {'int': 734} |
| `chromeProcesses` | {'int': 734} |
| `chromeProfiles` | {'int': 734} |
| `chromeRendererMaxPssKb` | {'int': 734} |
| `chromeRendererPssKb` | {'int': 734} |
| `chromeRenderers` | {'int': 734} |
| `chromeTabs` | {'int': 734} |
| `chromeTabsProbedProfiles` | {'int': 734} |
| `chromeUtilityPssKb` | {'int': 734} |
| `desktopPssKb` | {'int': 734} |
| `hostPssKb` | {'int': 734} |
| `kind` | {'str': 734} |
| `memAvailableKb` | {'int': 734} |
| `memTotalKb` | {'int': 734} |
| `otherPssKb` | {'int': 734} |
| `processes` | {'int': 734} |
| `pssFallbackProcesses` | {'int': 734} |

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
| `cpuMillicores` | {'int': 1445} |
| `display` | {'int': 1448} |
| `kind` | {'str': 1448} |
| `processes` | {'int': 1448} |
| `pssKb` | {'int': 1448} |
| `rendererMaxPssKb` | {'int': 1448} |
| `renderers` | {'int': 1448} |
| `tabs` | {'int': 1447} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
