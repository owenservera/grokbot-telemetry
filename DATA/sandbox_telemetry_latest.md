# sandbox_telemetry_parse — 2026-10-16 05:56:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=160106 lines=598
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 386 |
| `memory_sample` | 203 |
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
| `chromeBrowserPssKb` | {'int': 203} |
| `chromeGpuPssKb` | {'int': 203} |
| `chromeOtherPssKb` | {'int': 203} |
| `chromeProcesses` | {'int': 203} |
| `chromeProfiles` | {'int': 203} |
| `chromeRendererMaxPssKb` | {'int': 203} |
| `chromeRendererPssKb` | {'int': 203} |
| `chromeRenderers` | {'int': 203} |
| `chromeTabs` | {'int': 203} |
| `chromeTabsProbedProfiles` | {'int': 203} |
| `chromeUtilityPssKb` | {'int': 203} |
| `desktopPssKb` | {'int': 203} |
| `hostPssKb` | {'int': 203} |
| `kind` | {'str': 203} |
| `memAvailableKb` | {'int': 203} |
| `memTotalKb` | {'int': 203} |
| `otherPssKb` | {'int': 203} |
| `processes` | {'int': 203} |
| `pssFallbackProcesses` | {'int': 203} |

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
| `cpuMillicores` | {'int': 383} |
| `display` | {'int': 386} |
| `kind` | {'str': 386} |
| `processes` | {'int': 386} |
| `pssKb` | {'int': 386} |
| `rendererMaxPssKb` | {'int': 386} |
| `renderers` | {'int': 386} |
| `tabs` | {'int': 385} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
