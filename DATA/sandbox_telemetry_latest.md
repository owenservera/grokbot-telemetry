# sandbox_telemetry_parse — 2026-10-16 19:07:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=749184 lines=2800
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1854 |
| `memory_sample` | 937 |
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
| `chromeBrowserPssKb` | {'int': 937} |
| `chromeGpuPssKb` | {'int': 937} |
| `chromeOtherPssKb` | {'int': 937} |
| `chromeProcesses` | {'int': 937} |
| `chromeProfiles` | {'int': 937} |
| `chromeRendererMaxPssKb` | {'int': 937} |
| `chromeRendererPssKb` | {'int': 937} |
| `chromeRenderers` | {'int': 937} |
| `chromeTabs` | {'int': 937} |
| `chromeTabsProbedProfiles` | {'int': 937} |
| `chromeUtilityPssKb` | {'int': 937} |
| `desktopPssKb` | {'int': 937} |
| `hostPssKb` | {'int': 937} |
| `kind` | {'str': 937} |
| `memAvailableKb` | {'int': 937} |
| `memTotalKb` | {'int': 937} |
| `otherPssKb` | {'int': 937} |
| `processes` | {'int': 937} |
| `pssFallbackProcesses` | {'int': 937} |

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
| `cpuMillicores` | {'int': 1851} |
| `display` | {'int': 1854} |
| `kind` | {'str': 1854} |
| `processes` | {'int': 1854} |
| `pssKb` | {'int': 1854} |
| `rendererMaxPssKb` | {'int': 1854} |
| `renderers` | {'int': 1854} |
| `tabs` | {'int': 1853} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
