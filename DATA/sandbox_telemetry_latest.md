# sandbox_telemetry_parse — 2026-10-27 02:22:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=267636 lines=595
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 590 |
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
| `chromeBrowserPssKb` | {'int': 590} |
| `chromeGpuPssKb` | {'int': 590} |
| `chromeOtherPssKb` | {'int': 590} |
| `chromeProcesses` | {'int': 590} |
| `chromeProfiles` | {'int': 590} |
| `chromeRendererMaxPssKb` | {'int': 590} |
| `chromeRendererPssKb` | {'int': 590} |
| `chromeRenderers` | {'int': 590} |
| `chromeTabs` | {'int': 590} |
| `chromeTabsProbedProfiles` | {'int': 590} |
| `chromeUtilityPssKb` | {'int': 590} |
| `desktopPssKb` | {'int': 590} |
| `hostPssKb` | {'int': 590} |
| `kind` | {'str': 590} |
| `memAvailableKb` | {'int': 590} |
| `memTotalKb` | {'int': 590} |
| `otherPssKb` | {'int': 590} |
| `processes` | {'int': 590} |
| `pssFallbackProcesses` | {'int': 590} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
