# sandbox_telemetry_parse — 2026-10-16 09:43:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=330234 lines=1234
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 810 |
| `memory_sample` | 415 |
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
| `chromeBrowserPssKb` | {'int': 415} |
| `chromeGpuPssKb` | {'int': 415} |
| `chromeOtherPssKb` | {'int': 415} |
| `chromeProcesses` | {'int': 415} |
| `chromeProfiles` | {'int': 415} |
| `chromeRendererMaxPssKb` | {'int': 415} |
| `chromeRendererPssKb` | {'int': 415} |
| `chromeRenderers` | {'int': 415} |
| `chromeTabs` | {'int': 415} |
| `chromeTabsProbedProfiles` | {'int': 415} |
| `chromeUtilityPssKb` | {'int': 415} |
| `desktopPssKb` | {'int': 415} |
| `hostPssKb` | {'int': 415} |
| `kind` | {'str': 415} |
| `memAvailableKb` | {'int': 415} |
| `memTotalKb` | {'int': 415} |
| `otherPssKb` | {'int': 415} |
| `processes` | {'int': 415} |
| `pssFallbackProcesses` | {'int': 415} |

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
| `cpuMillicores` | {'int': 807} |
| `display` | {'int': 810} |
| `kind` | {'str': 810} |
| `processes` | {'int': 810} |
| `pssKb` | {'int': 810} |
| `rendererMaxPssKb` | {'int': 810} |
| `renderers` | {'int': 810} |
| `tabs` | {'int': 809} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
