# sandbox_telemetry_parse — 2026-10-12 23:15:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=690592 lines=1532
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1527 |
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
| `chromeBrowserPssKb` | {'int': 1527} |
| `chromeGpuPssKb` | {'int': 1527} |
| `chromeOtherPssKb` | {'int': 1527} |
| `chromeProcesses` | {'int': 1527} |
| `chromeProfiles` | {'int': 1527} |
| `chromeRendererMaxPssKb` | {'int': 1527} |
| `chromeRendererPssKb` | {'int': 1527} |
| `chromeRenderers` | {'int': 1527} |
| `chromeTabs` | {'int': 1527} |
| `chromeTabsProbedProfiles` | {'int': 1527} |
| `chromeUtilityPssKb` | {'int': 1527} |
| `desktopPssKb` | {'int': 1527} |
| `hostPssKb` | {'int': 1527} |
| `kind` | {'str': 1527} |
| `memAvailableKb` | {'int': 1527} |
| `memTotalKb` | {'int': 1527} |
| `otherPssKb` | {'int': 1527} |
| `processes` | {'int': 1527} |
| `pssFallbackProcesses` | {'int': 1527} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
