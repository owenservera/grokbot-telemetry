# sandbox_telemetry_parse — 2026-10-26 17:56:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=57459 lines=131
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 126 |
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
| `chromeBrowserPssKb` | {'int': 126} |
| `chromeGpuPssKb` | {'int': 126} |
| `chromeOtherPssKb` | {'int': 126} |
| `chromeProcesses` | {'int': 126} |
| `chromeProfiles` | {'int': 126} |
| `chromeRendererMaxPssKb` | {'int': 126} |
| `chromeRendererPssKb` | {'int': 126} |
| `chromeRenderers` | {'int': 126} |
| `chromeTabs` | {'int': 126} |
| `chromeTabsProbedProfiles` | {'int': 126} |
| `chromeUtilityPssKb` | {'int': 126} |
| `desktopPssKb` | {'int': 126} |
| `hostPssKb` | {'int': 126} |
| `kind` | {'str': 126} |
| `memAvailableKb` | {'int': 126} |
| `memTotalKb` | {'int': 126} |
| `otherPssKb` | {'int': 126} |
| `processes` | {'int': 126} |
| `pssFallbackProcesses` | {'int': 126} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
