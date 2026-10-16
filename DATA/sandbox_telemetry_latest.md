# sandbox_telemetry_parse — 2026-10-17 00:18:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=950753 lines=3553
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2356 |
| `memory_sample` | 1188 |
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
| `chromeBrowserPssKb` | {'int': 1188} |
| `chromeGpuPssKb` | {'int': 1188} |
| `chromeOtherPssKb` | {'int': 1188} |
| `chromeProcesses` | {'int': 1188} |
| `chromeProfiles` | {'int': 1188} |
| `chromeRendererMaxPssKb` | {'int': 1188} |
| `chromeRendererPssKb` | {'int': 1188} |
| `chromeRenderers` | {'int': 1188} |
| `chromeTabs` | {'int': 1188} |
| `chromeTabsProbedProfiles` | {'int': 1188} |
| `chromeUtilityPssKb` | {'int': 1188} |
| `desktopPssKb` | {'int': 1188} |
| `hostPssKb` | {'int': 1188} |
| `kind` | {'str': 1188} |
| `memAvailableKb` | {'int': 1188} |
| `memTotalKb` | {'int': 1188} |
| `otherPssKb` | {'int': 1188} |
| `processes` | {'int': 1188} |
| `pssFallbackProcesses` | {'int': 1188} |

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
| `cpuMillicores` | {'int': 2353} |
| `display` | {'int': 2356} |
| `kind` | {'str': 2356} |
| `processes` | {'int': 2356} |
| `pssKb` | {'int': 2356} |
| `rendererMaxPssKb` | {'int': 2356} |
| `renderers` | {'int': 2356} |
| `tabs` | {'int': 2355} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
