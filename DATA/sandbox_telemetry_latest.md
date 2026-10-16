# sandbox_telemetry_parse — 2026-10-16 22:58:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=900161 lines=3364
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2230 |
| `memory_sample` | 1125 |
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
| `chromeBrowserPssKb` | {'int': 1125} |
| `chromeGpuPssKb` | {'int': 1125} |
| `chromeOtherPssKb` | {'int': 1125} |
| `chromeProcesses` | {'int': 1125} |
| `chromeProfiles` | {'int': 1125} |
| `chromeRendererMaxPssKb` | {'int': 1125} |
| `chromeRendererPssKb` | {'int': 1125} |
| `chromeRenderers` | {'int': 1125} |
| `chromeTabs` | {'int': 1125} |
| `chromeTabsProbedProfiles` | {'int': 1125} |
| `chromeUtilityPssKb` | {'int': 1125} |
| `desktopPssKb` | {'int': 1125} |
| `hostPssKb` | {'int': 1125} |
| `kind` | {'str': 1125} |
| `memAvailableKb` | {'int': 1125} |
| `memTotalKb` | {'int': 1125} |
| `otherPssKb` | {'int': 1125} |
| `processes` | {'int': 1125} |
| `pssFallbackProcesses` | {'int': 1125} |

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
| `cpuMillicores` | {'int': 2227} |
| `display` | {'int': 2230} |
| `kind` | {'str': 2230} |
| `processes` | {'int': 2230} |
| `pssKb` | {'int': 2230} |
| `rendererMaxPssKb` | {'int': 2230} |
| `renderers` | {'int': 2230} |
| `tabs` | {'int': 2229} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
