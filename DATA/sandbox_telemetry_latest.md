# sandbox_telemetry_parse — 2026-10-16 02:31:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1190827 lines=2671
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2612 |
| `chrome_profile_sample` | 50 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2612} |
| `chromeGpuPssKb` | {'int': 2612} |
| `chromeOtherPssKb` | {'int': 2612} |
| `chromeProcesses` | {'int': 2612} |
| `chromeProfiles` | {'int': 2612} |
| `chromeRendererMaxPssKb` | {'int': 2612} |
| `chromeRendererPssKb` | {'int': 2612} |
| `chromeRenderers` | {'int': 2612} |
| `chromeTabs` | {'int': 2612} |
| `chromeTabsProbedProfiles` | {'int': 2612} |
| `chromeUtilityPssKb` | {'int': 2612} |
| `desktopPssKb` | {'int': 2612} |
| `hostPssKb` | {'int': 2612} |
| `kind` | {'str': 2612} |
| `memAvailableKb` | {'int': 2612} |
| `memTotalKb` | {'int': 2612} |
| `otherPssKb` | {'int': 2612} |
| `processes` | {'int': 2612} |
| `pssFallbackProcesses` | {'int': 2612} |

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
| `cpuMillicores` | {'int': 49} |
| `display` | {'int': 50} |
| `kind` | {'str': 50} |
| `processes` | {'int': 50} |
| `pssKb` | {'int': 50} |
| `rendererMaxPssKb` | {'int': 50} |
| `renderers` | {'int': 50} |
| `tabs` | {'int': 50} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
