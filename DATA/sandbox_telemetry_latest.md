# sandbox_telemetry_parse — 2026-10-16 21:12:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=833499 lines=3115
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2064 |
| `memory_sample` | 1042 |
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
| `chromeBrowserPssKb` | {'int': 1042} |
| `chromeGpuPssKb` | {'int': 1042} |
| `chromeOtherPssKb` | {'int': 1042} |
| `chromeProcesses` | {'int': 1042} |
| `chromeProfiles` | {'int': 1042} |
| `chromeRendererMaxPssKb` | {'int': 1042} |
| `chromeRendererPssKb` | {'int': 1042} |
| `chromeRenderers` | {'int': 1042} |
| `chromeTabs` | {'int': 1042} |
| `chromeTabsProbedProfiles` | {'int': 1042} |
| `chromeUtilityPssKb` | {'int': 1042} |
| `desktopPssKb` | {'int': 1042} |
| `hostPssKb` | {'int': 1042} |
| `kind` | {'str': 1042} |
| `memAvailableKb` | {'int': 1042} |
| `memTotalKb` | {'int': 1042} |
| `otherPssKb` | {'int': 1042} |
| `processes` | {'int': 1042} |
| `pssFallbackProcesses` | {'int': 1042} |

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
| `cpuMillicores` | {'int': 2061} |
| `display` | {'int': 2064} |
| `kind` | {'str': 2064} |
| `processes` | {'int': 2064} |
| `pssKb` | {'int': 2064} |
| `rendererMaxPssKb` | {'int': 2064} |
| `renderers` | {'int': 2064} |
| `tabs` | {'int': 2063} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
