# sandbox_telemetry_parse — 2026-10-13 08:53:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=963037 lines=2385
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1958 |
| `chrome_profile_sample` | 419 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1958} |
| `chromeGpuPssKb` | {'int': 1958} |
| `chromeOtherPssKb` | {'int': 1958} |
| `chromeProcesses` | {'int': 1958} |
| `chromeProfiles` | {'int': 1958} |
| `chromeRendererMaxPssKb` | {'int': 1958} |
| `chromeRendererPssKb` | {'int': 1958} |
| `chromeRenderers` | {'int': 1958} |
| `chromeTabs` | {'int': 1958} |
| `chromeTabsProbedProfiles` | {'int': 1958} |
| `chromeUtilityPssKb` | {'int': 1958} |
| `desktopPssKb` | {'int': 1958} |
| `hostPssKb` | {'int': 1958} |
| `kind` | {'str': 1958} |
| `memAvailableKb` | {'int': 1958} |
| `memTotalKb` | {'int': 1958} |
| `otherPssKb` | {'int': 1958} |
| `processes` | {'int': 1958} |
| `pssFallbackProcesses` | {'int': 1958} |

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
| `cpuMillicores` | {'int': 418} |
| `display` | {'int': 419} |
| `kind` | {'str': 419} |
| `processes` | {'int': 419} |
| `pssKb` | {'int': 419} |
| `rendererMaxPssKb` | {'int': 419} |
| `renderers` | {'int': 419} |
| `tabs` | {'int': 419} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
