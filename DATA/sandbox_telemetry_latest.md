# sandbox_telemetry_parse — 2026-10-16 14:49:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=549320 lines=2053
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1356 |
| `memory_sample` | 688 |
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
| `chromeBrowserPssKb` | {'int': 688} |
| `chromeGpuPssKb` | {'int': 688} |
| `chromeOtherPssKb` | {'int': 688} |
| `chromeProcesses` | {'int': 688} |
| `chromeProfiles` | {'int': 688} |
| `chromeRendererMaxPssKb` | {'int': 688} |
| `chromeRendererPssKb` | {'int': 688} |
| `chromeRenderers` | {'int': 688} |
| `chromeTabs` | {'int': 688} |
| `chromeTabsProbedProfiles` | {'int': 688} |
| `chromeUtilityPssKb` | {'int': 688} |
| `desktopPssKb` | {'int': 688} |
| `hostPssKb` | {'int': 688} |
| `kind` | {'str': 688} |
| `memAvailableKb` | {'int': 688} |
| `memTotalKb` | {'int': 688} |
| `otherPssKb` | {'int': 688} |
| `processes` | {'int': 688} |
| `pssFallbackProcesses` | {'int': 688} |

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
| `cpuMillicores` | {'int': 1353} |
| `display` | {'int': 1356} |
| `kind` | {'str': 1356} |
| `processes` | {'int': 1356} |
| `pssKb` | {'int': 1356} |
| `rendererMaxPssKb` | {'int': 1356} |
| `renderers` | {'int': 1356} |
| `tabs` | {'int': 1355} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
