# sandbox_telemetry_parse — 2026-10-16 04:49:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=107978 lines=403
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 256 |
| `memory_sample` | 138 |
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
| `chromeBrowserPssKb` | {'int': 138} |
| `chromeGpuPssKb` | {'int': 138} |
| `chromeOtherPssKb` | {'int': 138} |
| `chromeProcesses` | {'int': 138} |
| `chromeProfiles` | {'int': 138} |
| `chromeRendererMaxPssKb` | {'int': 138} |
| `chromeRendererPssKb` | {'int': 138} |
| `chromeRenderers` | {'int': 138} |
| `chromeTabs` | {'int': 138} |
| `chromeTabsProbedProfiles` | {'int': 138} |
| `chromeUtilityPssKb` | {'int': 138} |
| `desktopPssKb` | {'int': 138} |
| `hostPssKb` | {'int': 138} |
| `kind` | {'str': 138} |
| `memAvailableKb` | {'int': 138} |
| `memTotalKb` | {'int': 138} |
| `otherPssKb` | {'int': 138} |
| `processes` | {'int': 138} |
| `pssFallbackProcesses` | {'int': 138} |

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
| `cpuMillicores` | {'int': 253} |
| `display` | {'int': 256} |
| `kind` | {'str': 256} |
| `processes` | {'int': 256} |
| `pssKb` | {'int': 256} |
| `rendererMaxPssKb` | {'int': 256} |
| `renderers` | {'int': 256} |
| `tabs` | {'int': 255} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
