# sandbox_telemetry_parse — 2026-10-16 09:48:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=333446 lines=1246
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 818 |
| `memory_sample` | 419 |
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
| `chromeBrowserPssKb` | {'int': 419} |
| `chromeGpuPssKb` | {'int': 419} |
| `chromeOtherPssKb` | {'int': 419} |
| `chromeProcesses` | {'int': 419} |
| `chromeProfiles` | {'int': 419} |
| `chromeRendererMaxPssKb` | {'int': 419} |
| `chromeRendererPssKb` | {'int': 419} |
| `chromeRenderers` | {'int': 419} |
| `chromeTabs` | {'int': 419} |
| `chromeTabsProbedProfiles` | {'int': 419} |
| `chromeUtilityPssKb` | {'int': 419} |
| `desktopPssKb` | {'int': 419} |
| `hostPssKb` | {'int': 419} |
| `kind` | {'str': 419} |
| `memAvailableKb` | {'int': 419} |
| `memTotalKb` | {'int': 419} |
| `otherPssKb` | {'int': 419} |
| `processes` | {'int': 419} |
| `pssFallbackProcesses` | {'int': 419} |

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
| `cpuMillicores` | {'int': 815} |
| `display` | {'int': 818} |
| `kind` | {'str': 818} |
| `processes` | {'int': 818} |
| `pssKb` | {'int': 818} |
| `rendererMaxPssKb` | {'int': 818} |
| `renderers` | {'int': 818} |
| `tabs` | {'int': 817} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
