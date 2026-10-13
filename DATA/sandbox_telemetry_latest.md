# sandbox_telemetry_parse — 2026-10-13 03:20:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=786738 lines=1831
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1681 |
| `chrome_profile_sample` | 142 |
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
| `chromeBrowserPssKb` | {'int': 1681} |
| `chromeGpuPssKb` | {'int': 1681} |
| `chromeOtherPssKb` | {'int': 1681} |
| `chromeProcesses` | {'int': 1681} |
| `chromeProfiles` | {'int': 1681} |
| `chromeRendererMaxPssKb` | {'int': 1681} |
| `chromeRendererPssKb` | {'int': 1681} |
| `chromeRenderers` | {'int': 1681} |
| `chromeTabs` | {'int': 1681} |
| `chromeTabsProbedProfiles` | {'int': 1681} |
| `chromeUtilityPssKb` | {'int': 1681} |
| `desktopPssKb` | {'int': 1681} |
| `hostPssKb` | {'int': 1681} |
| `kind` | {'str': 1681} |
| `memAvailableKb` | {'int': 1681} |
| `memTotalKb` | {'int': 1681} |
| `otherPssKb` | {'int': 1681} |
| `processes` | {'int': 1681} |
| `pssFallbackProcesses` | {'int': 1681} |

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
| `cpuMillicores` | {'int': 141} |
| `display` | {'int': 142} |
| `kind` | {'str': 142} |
| `processes` | {'int': 142} |
| `pssKb` | {'int': 142} |
| `rendererMaxPssKb` | {'int': 142} |
| `renderers` | {'int': 142} |
| `tabs` | {'int': 142} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
