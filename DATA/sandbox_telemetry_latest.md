# sandbox_telemetry_parse — 2026-10-16 10:18:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=351915 lines=1315
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 864 |
| `memory_sample` | 442 |
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
| `chromeBrowserPssKb` | {'int': 442} |
| `chromeGpuPssKb` | {'int': 442} |
| `chromeOtherPssKb` | {'int': 442} |
| `chromeProcesses` | {'int': 442} |
| `chromeProfiles` | {'int': 442} |
| `chromeRendererMaxPssKb` | {'int': 442} |
| `chromeRendererPssKb` | {'int': 442} |
| `chromeRenderers` | {'int': 442} |
| `chromeTabs` | {'int': 442} |
| `chromeTabsProbedProfiles` | {'int': 442} |
| `chromeUtilityPssKb` | {'int': 442} |
| `desktopPssKb` | {'int': 442} |
| `hostPssKb` | {'int': 442} |
| `kind` | {'str': 442} |
| `memAvailableKb` | {'int': 442} |
| `memTotalKb` | {'int': 442} |
| `otherPssKb` | {'int': 442} |
| `processes` | {'int': 442} |
| `pssFallbackProcesses` | {'int': 442} |

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
| `cpuMillicores` | {'int': 861} |
| `display` | {'int': 864} |
| `kind` | {'str': 864} |
| `processes` | {'int': 864} |
| `pssKb` | {'int': 864} |
| `rendererMaxPssKb` | {'int': 864} |
| `renderers` | {'int': 864} |
| `tabs` | {'int': 863} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
