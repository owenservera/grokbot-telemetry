# sandbox_telemetry_parse — 2026-10-13 01:34:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=760640 lines=1749
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1640 |
| `chrome_profile_sample` | 101 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1640} |
| `chromeGpuPssKb` | {'int': 1640} |
| `chromeOtherPssKb` | {'int': 1640} |
| `chromeProcesses` | {'int': 1640} |
| `chromeProfiles` | {'int': 1640} |
| `chromeRendererMaxPssKb` | {'int': 1640} |
| `chromeRendererPssKb` | {'int': 1640} |
| `chromeRenderers` | {'int': 1640} |
| `chromeTabs` | {'int': 1640} |
| `chromeTabsProbedProfiles` | {'int': 1640} |
| `chromeUtilityPssKb` | {'int': 1640} |
| `desktopPssKb` | {'int': 1640} |
| `hostPssKb` | {'int': 1640} |
| `kind` | {'str': 1640} |
| `memAvailableKb` | {'int': 1640} |
| `memTotalKb` | {'int': 1640} |
| `otherPssKb` | {'int': 1640} |
| `processes` | {'int': 1640} |
| `pssFallbackProcesses` | {'int': 1640} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 100} |
| `display` | {'int': 101} |
| `kind` | {'str': 101} |
| `processes` | {'int': 101} |
| `pssKb` | {'int': 101} |
| `rendererMaxPssKb` | {'int': 101} |
| `renderers` | {'int': 101} |
| `tabs` | {'int': 101} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
