# sandbox_telemetry_parse — 2026-10-06 03:37:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=129242 lines=288
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 283 |
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
| `chromeBrowserPssKb` | {'int': 283} |
| `chromeGpuPssKb` | {'int': 283} |
| `chromeOtherPssKb` | {'int': 283} |
| `chromeProcesses` | {'int': 283} |
| `chromeProfiles` | {'int': 283} |
| `chromeRendererMaxPssKb` | {'int': 283} |
| `chromeRendererPssKb` | {'int': 283} |
| `chromeRenderers` | {'int': 283} |
| `chromeTabs` | {'int': 283} |
| `chromeTabsProbedProfiles` | {'int': 283} |
| `chromeUtilityPssKb` | {'int': 283} |
| `desktopPssKb` | {'int': 283} |
| `hostPssKb` | {'int': 283} |
| `kind` | {'str': 283} |
| `memAvailableKb` | {'int': 283} |
| `memTotalKb` | {'int': 283} |
| `otherPssKb` | {'int': 283} |
| `processes` | {'int': 283} |
| `pssFallbackProcesses` | {'int': 283} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
