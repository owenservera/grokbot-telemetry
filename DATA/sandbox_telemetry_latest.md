# sandbox_telemetry_parse — 2026-10-13 23:48:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1305026 lines=3457
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2494 |
| `chrome_profile_sample` | 955 |
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
| `chromeBrowserPssKb` | {'int': 2494} |
| `chromeGpuPssKb` | {'int': 2494} |
| `chromeOtherPssKb` | {'int': 2494} |
| `chromeProcesses` | {'int': 2494} |
| `chromeProfiles` | {'int': 2494} |
| `chromeRendererMaxPssKb` | {'int': 2494} |
| `chromeRendererPssKb` | {'int': 2494} |
| `chromeRenderers` | {'int': 2494} |
| `chromeTabs` | {'int': 2494} |
| `chromeTabsProbedProfiles` | {'int': 2494} |
| `chromeUtilityPssKb` | {'int': 2494} |
| `desktopPssKb` | {'int': 2494} |
| `hostPssKb` | {'int': 2494} |
| `kind` | {'str': 2494} |
| `memAvailableKb` | {'int': 2494} |
| `memTotalKb` | {'int': 2494} |
| `otherPssKb` | {'int': 2494} |
| `processes` | {'int': 2494} |
| `pssFallbackProcesses` | {'int': 2494} |

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
| `cpuMillicores` | {'int': 954} |
| `display` | {'int': 955} |
| `kind` | {'str': 955} |
| `processes` | {'int': 955} |
| `pssKb` | {'int': 955} |
| `rendererMaxPssKb` | {'int': 955} |
| `renderers` | {'int': 955} |
| `tabs` | {'int': 955} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
