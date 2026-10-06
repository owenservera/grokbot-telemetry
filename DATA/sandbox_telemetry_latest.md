# sandbox_telemetry_parse — 2026-10-07 01:53:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=733092 lines=1612
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1607 |
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
| `chromeBrowserPssKb` | {'int': 1607} |
| `chromeGpuPssKb` | {'int': 1607} |
| `chromeOtherPssKb` | {'int': 1607} |
| `chromeProcesses` | {'int': 1607} |
| `chromeProfiles` | {'int': 1607} |
| `chromeRendererMaxPssKb` | {'int': 1607} |
| `chromeRendererPssKb` | {'int': 1607} |
| `chromeRenderers` | {'int': 1607} |
| `chromeTabs` | {'int': 1607} |
| `chromeTabsProbedProfiles` | {'int': 1607} |
| `chromeUtilityPssKb` | {'int': 1607} |
| `desktopPssKb` | {'int': 1607} |
| `hostPssKb` | {'int': 1607} |
| `kind` | {'str': 1607} |
| `memAvailableKb` | {'int': 1607} |
| `memTotalKb` | {'int': 1607} |
| `otherPssKb` | {'int': 1607} |
| `processes` | {'int': 1607} |
| `pssFallbackProcesses` | {'int': 1607} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
