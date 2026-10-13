# sandbox_telemetry_parse — 2026-10-13 23:54:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1308855 lines=3469
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2500 |
| `chrome_profile_sample` | 961 |
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
| `chromeBrowserPssKb` | {'int': 2500} |
| `chromeGpuPssKb` | {'int': 2500} |
| `chromeOtherPssKb` | {'int': 2500} |
| `chromeProcesses` | {'int': 2500} |
| `chromeProfiles` | {'int': 2500} |
| `chromeRendererMaxPssKb` | {'int': 2500} |
| `chromeRendererPssKb` | {'int': 2500} |
| `chromeRenderers` | {'int': 2500} |
| `chromeTabs` | {'int': 2500} |
| `chromeTabsProbedProfiles` | {'int': 2500} |
| `chromeUtilityPssKb` | {'int': 2500} |
| `desktopPssKb` | {'int': 2500} |
| `hostPssKb` | {'int': 2500} |
| `kind` | {'str': 2500} |
| `memAvailableKb` | {'int': 2500} |
| `memTotalKb` | {'int': 2500} |
| `otherPssKb` | {'int': 2500} |
| `processes` | {'int': 2500} |
| `pssFallbackProcesses` | {'int': 2500} |

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
| `cpuMillicores` | {'int': 960} |
| `display` | {'int': 961} |
| `kind` | {'str': 961} |
| `processes` | {'int': 961} |
| `pssKb` | {'int': 961} |
| `rendererMaxPssKb` | {'int': 961} |
| `renderers` | {'int': 961} |
| `tabs` | {'int': 961} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
