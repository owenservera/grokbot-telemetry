# sandbox_telemetry_parse — 2026-10-16 12:24:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=443358 lines=1657
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1092 |
| `memory_sample` | 556 |
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
| `chromeBrowserPssKb` | {'int': 556} |
| `chromeGpuPssKb` | {'int': 556} |
| `chromeOtherPssKb` | {'int': 556} |
| `chromeProcesses` | {'int': 556} |
| `chromeProfiles` | {'int': 556} |
| `chromeRendererMaxPssKb` | {'int': 556} |
| `chromeRendererPssKb` | {'int': 556} |
| `chromeRenderers` | {'int': 556} |
| `chromeTabs` | {'int': 556} |
| `chromeTabsProbedProfiles` | {'int': 556} |
| `chromeUtilityPssKb` | {'int': 556} |
| `desktopPssKb` | {'int': 556} |
| `hostPssKb` | {'int': 556} |
| `kind` | {'str': 556} |
| `memAvailableKb` | {'int': 556} |
| `memTotalKb` | {'int': 556} |
| `otherPssKb` | {'int': 556} |
| `processes` | {'int': 556} |
| `pssFallbackProcesses` | {'int': 556} |

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
| `cpuMillicores` | {'int': 1089} |
| `display` | {'int': 1092} |
| `kind` | {'str': 1092} |
| `processes` | {'int': 1092} |
| `pssKb` | {'int': 1092} |
| `rendererMaxPssKb` | {'int': 1092} |
| `renderers` | {'int': 1092} |
| `tabs` | {'int': 1091} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
