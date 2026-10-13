# sandbox_telemetry_parse — 2026-10-13 10:33:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1015222 lines=2549
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2040 |
| `chrome_profile_sample` | 501 |
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
| `chromeBrowserPssKb` | {'int': 2040} |
| `chromeGpuPssKb` | {'int': 2040} |
| `chromeOtherPssKb` | {'int': 2040} |
| `chromeProcesses` | {'int': 2040} |
| `chromeProfiles` | {'int': 2040} |
| `chromeRendererMaxPssKb` | {'int': 2040} |
| `chromeRendererPssKb` | {'int': 2040} |
| `chromeRenderers` | {'int': 2040} |
| `chromeTabs` | {'int': 2040} |
| `chromeTabsProbedProfiles` | {'int': 2040} |
| `chromeUtilityPssKb` | {'int': 2040} |
| `desktopPssKb` | {'int': 2040} |
| `hostPssKb` | {'int': 2040} |
| `kind` | {'str': 2040} |
| `memAvailableKb` | {'int': 2040} |
| `memTotalKb` | {'int': 2040} |
| `otherPssKb` | {'int': 2040} |
| `processes` | {'int': 2040} |
| `pssFallbackProcesses` | {'int': 2040} |

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
| `cpuMillicores` | {'int': 500} |
| `display` | {'int': 501} |
| `kind` | {'str': 501} |
| `processes` | {'int': 501} |
| `pssKb` | {'int': 501} |
| `rendererMaxPssKb` | {'int': 501} |
| `renderers` | {'int': 501} |
| `tabs` | {'int': 501} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
