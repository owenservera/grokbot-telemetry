# sandbox_telemetry_parse — 2026-10-27 02:51:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=280292 lines=623
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 618 |
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
| `chromeBrowserPssKb` | {'int': 618} |
| `chromeGpuPssKb` | {'int': 618} |
| `chromeOtherPssKb` | {'int': 618} |
| `chromeProcesses` | {'int': 618} |
| `chromeProfiles` | {'int': 618} |
| `chromeRendererMaxPssKb` | {'int': 618} |
| `chromeRendererPssKb` | {'int': 618} |
| `chromeRenderers` | {'int': 618} |
| `chromeTabs` | {'int': 618} |
| `chromeTabsProbedProfiles` | {'int': 618} |
| `chromeUtilityPssKb` | {'int': 618} |
| `desktopPssKb` | {'int': 618} |
| `hostPssKb` | {'int': 618} |
| `kind` | {'str': 618} |
| `memAvailableKb` | {'int': 618} |
| `memTotalKb` | {'int': 618} |
| `otherPssKb` | {'int': 618} |
| `processes` | {'int': 618} |
| `pssFallbackProcesses` | {'int': 618} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
