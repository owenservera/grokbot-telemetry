# sandbox_telemetry_parse — 2026-10-12 18:28:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=643584 lines=1428
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1423 |
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
| `chromeBrowserPssKb` | {'int': 1423} |
| `chromeGpuPssKb` | {'int': 1423} |
| `chromeOtherPssKb` | {'int': 1423} |
| `chromeProcesses` | {'int': 1423} |
| `chromeProfiles` | {'int': 1423} |
| `chromeRendererMaxPssKb` | {'int': 1423} |
| `chromeRendererPssKb` | {'int': 1423} |
| `chromeRenderers` | {'int': 1423} |
| `chromeTabs` | {'int': 1423} |
| `chromeTabsProbedProfiles` | {'int': 1423} |
| `chromeUtilityPssKb` | {'int': 1423} |
| `desktopPssKb` | {'int': 1423} |
| `hostPssKb` | {'int': 1423} |
| `kind` | {'str': 1423} |
| `memAvailableKb` | {'int': 1423} |
| `memTotalKb` | {'int': 1423} |
| `otherPssKb` | {'int': 1423} |
| `processes` | {'int': 1423} |
| `pssFallbackProcesses` | {'int': 1423} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
