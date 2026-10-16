# sandbox_telemetry_parse — 2026-10-16 16:05:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=607888 lines=2272
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1502 |
| `memory_sample` | 761 |
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
| `chromeBrowserPssKb` | {'int': 761} |
| `chromeGpuPssKb` | {'int': 761} |
| `chromeOtherPssKb` | {'int': 761} |
| `chromeProcesses` | {'int': 761} |
| `chromeProfiles` | {'int': 761} |
| `chromeRendererMaxPssKb` | {'int': 761} |
| `chromeRendererPssKb` | {'int': 761} |
| `chromeRenderers` | {'int': 761} |
| `chromeTabs` | {'int': 761} |
| `chromeTabsProbedProfiles` | {'int': 761} |
| `chromeUtilityPssKb` | {'int': 761} |
| `desktopPssKb` | {'int': 761} |
| `hostPssKb` | {'int': 761} |
| `kind` | {'str': 761} |
| `memAvailableKb` | {'int': 761} |
| `memTotalKb` | {'int': 761} |
| `otherPssKb` | {'int': 761} |
| `processes` | {'int': 761} |
| `pssFallbackProcesses` | {'int': 761} |

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
| `cpuMillicores` | {'int': 1499} |
| `display` | {'int': 1502} |
| `kind` | {'str': 1502} |
| `processes` | {'int': 1502} |
| `pssKb` | {'int': 1502} |
| `rendererMaxPssKb` | {'int': 1502} |
| `renderers` | {'int': 1502} |
| `tabs` | {'int': 1501} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
