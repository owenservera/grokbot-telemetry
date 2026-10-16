# sandbox_telemetry_parse — 2026-10-16 08:20:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=274022 lines=1024
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 670 |
| `memory_sample` | 345 |
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
| `chromeBrowserPssKb` | {'int': 345} |
| `chromeGpuPssKb` | {'int': 345} |
| `chromeOtherPssKb` | {'int': 345} |
| `chromeProcesses` | {'int': 345} |
| `chromeProfiles` | {'int': 345} |
| `chromeRendererMaxPssKb` | {'int': 345} |
| `chromeRendererPssKb` | {'int': 345} |
| `chromeRenderers` | {'int': 345} |
| `chromeTabs` | {'int': 345} |
| `chromeTabsProbedProfiles` | {'int': 345} |
| `chromeUtilityPssKb` | {'int': 345} |
| `desktopPssKb` | {'int': 345} |
| `hostPssKb` | {'int': 345} |
| `kind` | {'str': 345} |
| `memAvailableKb` | {'int': 345} |
| `memTotalKb` | {'int': 345} |
| `otherPssKb` | {'int': 345} |
| `processes` | {'int': 345} |
| `pssFallbackProcesses` | {'int': 345} |

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
| `cpuMillicores` | {'int': 667} |
| `display` | {'int': 670} |
| `kind` | {'str': 670} |
| `processes` | {'int': 670} |
| `pssKb` | {'int': 670} |
| `rendererMaxPssKb` | {'int': 670} |
| `renderers` | {'int': 670} |
| `tabs` | {'int': 669} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
