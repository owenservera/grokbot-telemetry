# sandbox_telemetry_parse — 2026-10-13 21:17:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1225862 lines=3209
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2370 |
| `chrome_profile_sample` | 831 |
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
| `chromeBrowserPssKb` | {'int': 2370} |
| `chromeGpuPssKb` | {'int': 2370} |
| `chromeOtherPssKb` | {'int': 2370} |
| `chromeProcesses` | {'int': 2370} |
| `chromeProfiles` | {'int': 2370} |
| `chromeRendererMaxPssKb` | {'int': 2370} |
| `chromeRendererPssKb` | {'int': 2370} |
| `chromeRenderers` | {'int': 2370} |
| `chromeTabs` | {'int': 2370} |
| `chromeTabsProbedProfiles` | {'int': 2370} |
| `chromeUtilityPssKb` | {'int': 2370} |
| `desktopPssKb` | {'int': 2370} |
| `hostPssKb` | {'int': 2370} |
| `kind` | {'str': 2370} |
| `memAvailableKb` | {'int': 2370} |
| `memTotalKb` | {'int': 2370} |
| `otherPssKb` | {'int': 2370} |
| `processes` | {'int': 2370} |
| `pssFallbackProcesses` | {'int': 2370} |

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
| `cpuMillicores` | {'int': 830} |
| `display` | {'int': 831} |
| `kind` | {'str': 831} |
| `processes` | {'int': 831} |
| `pssKb` | {'int': 831} |
| `rendererMaxPssKb` | {'int': 831} |
| `renderers` | {'int': 831} |
| `tabs` | {'int': 831} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
