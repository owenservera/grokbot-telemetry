# sandbox_telemetry_parse — 2026-10-07 05:01:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=817525 lines=1797
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1792 |
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
| `chromeBrowserPssKb` | {'int': 1792} |
| `chromeGpuPssKb` | {'int': 1792} |
| `chromeOtherPssKb` | {'int': 1792} |
| `chromeProcesses` | {'int': 1792} |
| `chromeProfiles` | {'int': 1792} |
| `chromeRendererMaxPssKb` | {'int': 1792} |
| `chromeRendererPssKb` | {'int': 1792} |
| `chromeRenderers` | {'int': 1792} |
| `chromeTabs` | {'int': 1792} |
| `chromeTabsProbedProfiles` | {'int': 1792} |
| `chromeUtilityPssKb` | {'int': 1792} |
| `desktopPssKb` | {'int': 1792} |
| `hostPssKb` | {'int': 1792} |
| `kind` | {'str': 1792} |
| `memAvailableKb` | {'int': 1792} |
| `memTotalKb` | {'int': 1792} |
| `otherPssKb` | {'int': 1792} |
| `processes` | {'int': 1792} |
| `pssFallbackProcesses` | {'int': 1792} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
