# sandbox_telemetry_parse — 2026-10-07 03:38:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=780133 lines=1715
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1710 |
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
| `chromeBrowserPssKb` | {'int': 1710} |
| `chromeGpuPssKb` | {'int': 1710} |
| `chromeOtherPssKb` | {'int': 1710} |
| `chromeProcesses` | {'int': 1710} |
| `chromeProfiles` | {'int': 1710} |
| `chromeRendererMaxPssKb` | {'int': 1710} |
| `chromeRendererPssKb` | {'int': 1710} |
| `chromeRenderers` | {'int': 1710} |
| `chromeTabs` | {'int': 1710} |
| `chromeTabsProbedProfiles` | {'int': 1710} |
| `chromeUtilityPssKb` | {'int': 1710} |
| `desktopPssKb` | {'int': 1710} |
| `hostPssKb` | {'int': 1710} |
| `kind` | {'str': 1710} |
| `memAvailableKb` | {'int': 1710} |
| `memTotalKb` | {'int': 1710} |
| `otherPssKb` | {'int': 1710} |
| `processes` | {'int': 1710} |
| `pssFallbackProcesses` | {'int': 1710} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
