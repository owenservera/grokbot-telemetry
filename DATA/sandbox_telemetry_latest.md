# sandbox_telemetry_parse — 2026-10-16 12:02:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=427304 lines=1597
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1052 |
| `memory_sample` | 536 |
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
| `chromeBrowserPssKb` | {'int': 536} |
| `chromeGpuPssKb` | {'int': 536} |
| `chromeOtherPssKb` | {'int': 536} |
| `chromeProcesses` | {'int': 536} |
| `chromeProfiles` | {'int': 536} |
| `chromeRendererMaxPssKb` | {'int': 536} |
| `chromeRendererPssKb` | {'int': 536} |
| `chromeRenderers` | {'int': 536} |
| `chromeTabs` | {'int': 536} |
| `chromeTabsProbedProfiles` | {'int': 536} |
| `chromeUtilityPssKb` | {'int': 536} |
| `desktopPssKb` | {'int': 536} |
| `hostPssKb` | {'int': 536} |
| `kind` | {'str': 536} |
| `memAvailableKb` | {'int': 536} |
| `memTotalKb` | {'int': 536} |
| `otherPssKb` | {'int': 536} |
| `processes` | {'int': 536} |
| `pssFallbackProcesses` | {'int': 536} |

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
| `cpuMillicores` | {'int': 1049} |
| `display` | {'int': 1052} |
| `kind` | {'str': 1052} |
| `processes` | {'int': 1052} |
| `pssKb` | {'int': 1052} |
| `rendererMaxPssKb` | {'int': 1052} |
| `renderers` | {'int': 1052} |
| `tabs` | {'int': 1051} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
