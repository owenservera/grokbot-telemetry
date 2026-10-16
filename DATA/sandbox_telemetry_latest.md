# sandbox_telemetry_parse — 2026-10-16 11:29:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=403236 lines=1507
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 992 |
| `memory_sample` | 506 |
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
| `chromeBrowserPssKb` | {'int': 506} |
| `chromeGpuPssKb` | {'int': 506} |
| `chromeOtherPssKb` | {'int': 506} |
| `chromeProcesses` | {'int': 506} |
| `chromeProfiles` | {'int': 506} |
| `chromeRendererMaxPssKb` | {'int': 506} |
| `chromeRendererPssKb` | {'int': 506} |
| `chromeRenderers` | {'int': 506} |
| `chromeTabs` | {'int': 506} |
| `chromeTabsProbedProfiles` | {'int': 506} |
| `chromeUtilityPssKb` | {'int': 506} |
| `desktopPssKb` | {'int': 506} |
| `hostPssKb` | {'int': 506} |
| `kind` | {'str': 506} |
| `memAvailableKb` | {'int': 506} |
| `memTotalKb` | {'int': 506} |
| `otherPssKb` | {'int': 506} |
| `processes` | {'int': 506} |
| `pssFallbackProcesses` | {'int': 506} |

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
| `cpuMillicores` | {'int': 989} |
| `display` | {'int': 992} |
| `kind` | {'str': 992} |
| `processes` | {'int': 992} |
| `pssKb` | {'int': 992} |
| `rendererMaxPssKb` | {'int': 992} |
| `renderers` | {'int': 992} |
| `tabs` | {'int': 991} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
