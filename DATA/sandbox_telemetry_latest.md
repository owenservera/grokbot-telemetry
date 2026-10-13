# sandbox_telemetry_parse — 2026-10-13 06:48:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=896859 lines=2177
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1854 |
| `chrome_profile_sample` | 315 |
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
| `chromeBrowserPssKb` | {'int': 1854} |
| `chromeGpuPssKb` | {'int': 1854} |
| `chromeOtherPssKb` | {'int': 1854} |
| `chromeProcesses` | {'int': 1854} |
| `chromeProfiles` | {'int': 1854} |
| `chromeRendererMaxPssKb` | {'int': 1854} |
| `chromeRendererPssKb` | {'int': 1854} |
| `chromeRenderers` | {'int': 1854} |
| `chromeTabs` | {'int': 1854} |
| `chromeTabsProbedProfiles` | {'int': 1854} |
| `chromeUtilityPssKb` | {'int': 1854} |
| `desktopPssKb` | {'int': 1854} |
| `hostPssKb` | {'int': 1854} |
| `kind` | {'str': 1854} |
| `memAvailableKb` | {'int': 1854} |
| `memTotalKb` | {'int': 1854} |
| `otherPssKb` | {'int': 1854} |
| `processes` | {'int': 1854} |
| `pssFallbackProcesses` | {'int': 1854} |

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
| `cpuMillicores` | {'int': 314} |
| `display` | {'int': 315} |
| `kind` | {'str': 315} |
| `processes` | {'int': 315} |
| `pssKb` | {'int': 315} |
| `rendererMaxPssKb` | {'int': 315} |
| `renderers` | {'int': 315} |
| `tabs` | {'int': 315} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
