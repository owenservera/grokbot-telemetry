# sandbox_telemetry_parse — 2026-10-07 07:35:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=885469 lines=1946
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1941 |
| `boot_stage` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1941} |
| `chromeGpuPssKb` | {'int': 1941} |
| `chromeOtherPssKb` | {'int': 1941} |
| `chromeProcesses` | {'int': 1941} |
| `chromeProfiles` | {'int': 1941} |
| `chromeRendererMaxPssKb` | {'int': 1941} |
| `chromeRendererPssKb` | {'int': 1941} |
| `chromeRenderers` | {'int': 1941} |
| `chromeTabs` | {'int': 1941} |
| `chromeTabsProbedProfiles` | {'int': 1941} |
| `chromeUtilityPssKb` | {'int': 1941} |
| `desktopPssKb` | {'int': 1941} |
| `hostPssKb` | {'int': 1941} |
| `kind` | {'str': 1941} |
| `memAvailableKb` | {'int': 1941} |
| `memTotalKb` | {'int': 1941} |
| `otherPssKb` | {'int': 1941} |
| `processes` | {'int': 1941} |
| `pssFallbackProcesses` | {'int': 1941} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
