# sandbox_telemetry_parse — 2026-10-27 01:06:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=238659 lines=531
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 526 |
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
| `chromeBrowserPssKb` | {'int': 526} |
| `chromeGpuPssKb` | {'int': 526} |
| `chromeOtherPssKb` | {'int': 526} |
| `chromeProcesses` | {'int': 526} |
| `chromeProfiles` | {'int': 526} |
| `chromeRendererMaxPssKb` | {'int': 526} |
| `chromeRendererPssKb` | {'int': 526} |
| `chromeRenderers` | {'int': 526} |
| `chromeTabs` | {'int': 526} |
| `chromeTabsProbedProfiles` | {'int': 526} |
| `chromeUtilityPssKb` | {'int': 526} |
| `desktopPssKb` | {'int': 526} |
| `hostPssKb` | {'int': 526} |
| `kind` | {'str': 526} |
| `memAvailableKb` | {'int': 526} |
| `memTotalKb` | {'int': 526} |
| `otherPssKb` | {'int': 526} |
| `processes` | {'int': 526} |
| `pssFallbackProcesses` | {'int': 526} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
