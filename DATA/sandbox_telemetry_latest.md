# sandbox_telemetry_parse — 2026-10-26 22:02:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=163914 lines=366
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 361 |
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
| `chromeBrowserPssKb` | {'int': 361} |
| `chromeGpuPssKb` | {'int': 361} |
| `chromeOtherPssKb` | {'int': 361} |
| `chromeProcesses` | {'int': 361} |
| `chromeProfiles` | {'int': 361} |
| `chromeRendererMaxPssKb` | {'int': 361} |
| `chromeRendererPssKb` | {'int': 361} |
| `chromeRenderers` | {'int': 361} |
| `chromeTabs` | {'int': 361} |
| `chromeTabsProbedProfiles` | {'int': 361} |
| `chromeUtilityPssKb` | {'int': 361} |
| `desktopPssKb` | {'int': 361} |
| `hostPssKb` | {'int': 361} |
| `kind` | {'str': 361} |
| `memAvailableKb` | {'int': 361} |
| `memTotalKb` | {'int': 361} |
| `otherPssKb` | {'int': 361} |
| `processes` | {'int': 361} |
| `pssFallbackProcesses` | {'int': 361} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
