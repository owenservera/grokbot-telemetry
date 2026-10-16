# sandbox_telemetry_parse — 2026-10-16 17:46:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=685746 lines=2563
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1696 |
| `memory_sample` | 858 |
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
| `chromeBrowserPssKb` | {'int': 858} |
| `chromeGpuPssKb` | {'int': 858} |
| `chromeOtherPssKb` | {'int': 858} |
| `chromeProcesses` | {'int': 858} |
| `chromeProfiles` | {'int': 858} |
| `chromeRendererMaxPssKb` | {'int': 858} |
| `chromeRendererPssKb` | {'int': 858} |
| `chromeRenderers` | {'int': 858} |
| `chromeTabs` | {'int': 858} |
| `chromeTabsProbedProfiles` | {'int': 858} |
| `chromeUtilityPssKb` | {'int': 858} |
| `desktopPssKb` | {'int': 858} |
| `hostPssKb` | {'int': 858} |
| `kind` | {'str': 858} |
| `memAvailableKb` | {'int': 858} |
| `memTotalKb` | {'int': 858} |
| `otherPssKb` | {'int': 858} |
| `processes` | {'int': 858} |
| `pssFallbackProcesses` | {'int': 858} |

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
| `cpuMillicores` | {'int': 1693} |
| `display` | {'int': 1696} |
| `kind` | {'str': 1696} |
| `processes` | {'int': 1696} |
| `pssKb` | {'int': 1696} |
| `rendererMaxPssKb` | {'int': 1696} |
| `renderers` | {'int': 1696} |
| `tabs` | {'int': 1695} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
