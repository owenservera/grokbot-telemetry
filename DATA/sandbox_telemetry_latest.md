# sandbox_telemetry_parse — 2026-10-16 21:07:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=830287 lines=3103
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2056 |
| `memory_sample` | 1038 |
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
| `chromeBrowserPssKb` | {'int': 1038} |
| `chromeGpuPssKb` | {'int': 1038} |
| `chromeOtherPssKb` | {'int': 1038} |
| `chromeProcesses` | {'int': 1038} |
| `chromeProfiles` | {'int': 1038} |
| `chromeRendererMaxPssKb` | {'int': 1038} |
| `chromeRendererPssKb` | {'int': 1038} |
| `chromeRenderers` | {'int': 1038} |
| `chromeTabs` | {'int': 1038} |
| `chromeTabsProbedProfiles` | {'int': 1038} |
| `chromeUtilityPssKb` | {'int': 1038} |
| `desktopPssKb` | {'int': 1038} |
| `hostPssKb` | {'int': 1038} |
| `kind` | {'str': 1038} |
| `memAvailableKb` | {'int': 1038} |
| `memTotalKb` | {'int': 1038} |
| `otherPssKb` | {'int': 1038} |
| `processes` | {'int': 1038} |
| `pssFallbackProcesses` | {'int': 1038} |

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
| `cpuMillicores` | {'int': 2053} |
| `display` | {'int': 2056} |
| `kind` | {'str': 2056} |
| `processes` | {'int': 2056} |
| `pssKb` | {'int': 2056} |
| `rendererMaxPssKb` | {'int': 2056} |
| `renderers` | {'int': 2056} |
| `tabs` | {'int': 2055} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
