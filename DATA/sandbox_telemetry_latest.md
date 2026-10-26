# sandbox_telemetry_parse — 2026-10-26 22:51:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=184752 lines=412
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 407 |
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
| `chromeBrowserPssKb` | {'int': 407} |
| `chromeGpuPssKb` | {'int': 407} |
| `chromeOtherPssKb` | {'int': 407} |
| `chromeProcesses` | {'int': 407} |
| `chromeProfiles` | {'int': 407} |
| `chromeRendererMaxPssKb` | {'int': 407} |
| `chromeRendererPssKb` | {'int': 407} |
| `chromeRenderers` | {'int': 407} |
| `chromeTabs` | {'int': 407} |
| `chromeTabsProbedProfiles` | {'int': 407} |
| `chromeUtilityPssKb` | {'int': 407} |
| `desktopPssKb` | {'int': 407} |
| `hostPssKb` | {'int': 407} |
| `kind` | {'str': 407} |
| `memAvailableKb` | {'int': 407} |
| `memTotalKb` | {'int': 407} |
| `otherPssKb` | {'int': 407} |
| `processes` | {'int': 407} |
| `pssFallbackProcesses` | {'int': 407} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
