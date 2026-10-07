# sandbox_telemetry_parse — 2026-10-07 07:46:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=890485 lines=1957
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1952 |
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
| `chromeBrowserPssKb` | {'int': 1952} |
| `chromeGpuPssKb` | {'int': 1952} |
| `chromeOtherPssKb` | {'int': 1952} |
| `chromeProcesses` | {'int': 1952} |
| `chromeProfiles` | {'int': 1952} |
| `chromeRendererMaxPssKb` | {'int': 1952} |
| `chromeRendererPssKb` | {'int': 1952} |
| `chromeRenderers` | {'int': 1952} |
| `chromeTabs` | {'int': 1952} |
| `chromeTabsProbedProfiles` | {'int': 1952} |
| `chromeUtilityPssKb` | {'int': 1952} |
| `desktopPssKb` | {'int': 1952} |
| `hostPssKb` | {'int': 1952} |
| `kind` | {'str': 1952} |
| `memAvailableKb` | {'int': 1952} |
| `memTotalKb` | {'int': 1952} |
| `otherPssKb` | {'int': 1952} |
| `processes` | {'int': 1952} |
| `pssFallbackProcesses` | {'int': 1952} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
