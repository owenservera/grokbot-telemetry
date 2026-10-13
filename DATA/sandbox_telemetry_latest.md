# sandbox_telemetry_parse — 2026-10-13 03:42:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=793742 lines=1853
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1692 |
| `chrome_profile_sample` | 153 |
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
| `chromeBrowserPssKb` | {'int': 1692} |
| `chromeGpuPssKb` | {'int': 1692} |
| `chromeOtherPssKb` | {'int': 1692} |
| `chromeProcesses` | {'int': 1692} |
| `chromeProfiles` | {'int': 1692} |
| `chromeRendererMaxPssKb` | {'int': 1692} |
| `chromeRendererPssKb` | {'int': 1692} |
| `chromeRenderers` | {'int': 1692} |
| `chromeTabs` | {'int': 1692} |
| `chromeTabsProbedProfiles` | {'int': 1692} |
| `chromeUtilityPssKb` | {'int': 1692} |
| `desktopPssKb` | {'int': 1692} |
| `hostPssKb` | {'int': 1692} |
| `kind` | {'str': 1692} |
| `memAvailableKb` | {'int': 1692} |
| `memTotalKb` | {'int': 1692} |
| `otherPssKb` | {'int': 1692} |
| `processes` | {'int': 1692} |
| `pssFallbackProcesses` | {'int': 1692} |

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
| `cpuMillicores` | {'int': 152} |
| `display` | {'int': 153} |
| `kind` | {'str': 153} |
| `processes` | {'int': 153} |
| `pssKb` | {'int': 153} |
| `rendererMaxPssKb` | {'int': 153} |
| `renderers` | {'int': 153} |
| `tabs` | {'int': 153} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
