# sandbox_telemetry_parse — 2026-10-26 22:30:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=176598 lines=394
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 389 |
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
| `chromeBrowserPssKb` | {'int': 389} |
| `chromeGpuPssKb` | {'int': 389} |
| `chromeOtherPssKb` | {'int': 389} |
| `chromeProcesses` | {'int': 389} |
| `chromeProfiles` | {'int': 389} |
| `chromeRendererMaxPssKb` | {'int': 389} |
| `chromeRendererPssKb` | {'int': 389} |
| `chromeRenderers` | {'int': 389} |
| `chromeTabs` | {'int': 389} |
| `chromeTabsProbedProfiles` | {'int': 389} |
| `chromeUtilityPssKb` | {'int': 389} |
| `desktopPssKb` | {'int': 389} |
| `hostPssKb` | {'int': 389} |
| `kind` | {'str': 389} |
| `memAvailableKb` | {'int': 389} |
| `memTotalKb` | {'int': 389} |
| `otherPssKb` | {'int': 389} |
| `processes` | {'int': 389} |
| `pssFallbackProcesses` | {'int': 389} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
