# sandbox_telemetry_parse — 2026-10-16 08:43:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=290082 lines=1084
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 710 |
| `memory_sample` | 365 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 365} |
| `chromeGpuPssKb` | {'int': 365} |
| `chromeOtherPssKb` | {'int': 365} |
| `chromeProcesses` | {'int': 365} |
| `chromeProfiles` | {'int': 365} |
| `chromeRendererMaxPssKb` | {'int': 365} |
| `chromeRendererPssKb` | {'int': 365} |
| `chromeRenderers` | {'int': 365} |
| `chromeTabs` | {'int': 365} |
| `chromeTabsProbedProfiles` | {'int': 365} |
| `chromeUtilityPssKb` | {'int': 365} |
| `desktopPssKb` | {'int': 365} |
| `hostPssKb` | {'int': 365} |
| `kind` | {'str': 365} |
| `memAvailableKb` | {'int': 365} |
| `memTotalKb` | {'int': 365} |
| `otherPssKb` | {'int': 365} |
| `processes` | {'int': 365} |
| `pssFallbackProcesses` | {'int': 365} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 707} |
| `display` | {'int': 710} |
| `kind` | {'str': 710} |
| `processes` | {'int': 710} |
| `pssKb` | {'int': 710} |
| `rendererMaxPssKb` | {'int': 710} |
| `renderers` | {'int': 710} |
| `tabs` | {'int': 709} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
