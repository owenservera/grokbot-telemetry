# sandbox_telemetry_parse — 2026-10-17 00:07:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=945132 lines=3532
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2342 |
| `memory_sample` | 1181 |
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
| `chromeBrowserPssKb` | {'int': 1181} |
| `chromeGpuPssKb` | {'int': 1181} |
| `chromeOtherPssKb` | {'int': 1181} |
| `chromeProcesses` | {'int': 1181} |
| `chromeProfiles` | {'int': 1181} |
| `chromeRendererMaxPssKb` | {'int': 1181} |
| `chromeRendererPssKb` | {'int': 1181} |
| `chromeRenderers` | {'int': 1181} |
| `chromeTabs` | {'int': 1181} |
| `chromeTabsProbedProfiles` | {'int': 1181} |
| `chromeUtilityPssKb` | {'int': 1181} |
| `desktopPssKb` | {'int': 1181} |
| `hostPssKb` | {'int': 1181} |
| `kind` | {'str': 1181} |
| `memAvailableKb` | {'int': 1181} |
| `memTotalKb` | {'int': 1181} |
| `otherPssKb` | {'int': 1181} |
| `processes` | {'int': 1181} |
| `pssFallbackProcesses` | {'int': 1181} |

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
| `cpuMillicores` | {'int': 2339} |
| `display` | {'int': 2342} |
| `kind` | {'str': 2342} |
| `processes` | {'int': 2342} |
| `pssKb` | {'int': 2342} |
| `rendererMaxPssKb` | {'int': 2342} |
| `renderers` | {'int': 2342} |
| `tabs` | {'int': 2341} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
