# sandbox_telemetry_parse — 2026-10-16 11:29:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=402435 lines=1504
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 990 |
| `memory_sample` | 505 |
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
| `chromeBrowserPssKb` | {'int': 505} |
| `chromeGpuPssKb` | {'int': 505} |
| `chromeOtherPssKb` | {'int': 505} |
| `chromeProcesses` | {'int': 505} |
| `chromeProfiles` | {'int': 505} |
| `chromeRendererMaxPssKb` | {'int': 505} |
| `chromeRendererPssKb` | {'int': 505} |
| `chromeRenderers` | {'int': 505} |
| `chromeTabs` | {'int': 505} |
| `chromeTabsProbedProfiles` | {'int': 505} |
| `chromeUtilityPssKb` | {'int': 505} |
| `desktopPssKb` | {'int': 505} |
| `hostPssKb` | {'int': 505} |
| `kind` | {'str': 505} |
| `memAvailableKb` | {'int': 505} |
| `memTotalKb` | {'int': 505} |
| `otherPssKb` | {'int': 505} |
| `processes` | {'int': 505} |
| `pssFallbackProcesses` | {'int': 505} |

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
| `cpuMillicores` | {'int': 987} |
| `display` | {'int': 990} |
| `kind` | {'str': 990} |
| `processes` | {'int': 990} |
| `pssKb` | {'int': 990} |
| `rendererMaxPssKb` | {'int': 990} |
| `renderers` | {'int': 990} |
| `tabs` | {'int': 989} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
